module InvestorsHelper
  def calculate_monthly_tax(yearly_tax)
    if yearly_tax
      monthly_taxes = yearly_tax / 12
    else
      monthly_taxes = 0
    end
    return monthly_taxes
  end

  def find_hoa(api_provided_fee)
    if api_provided_fee
      hoa_fee = api_provided_fee
    else
      hoa_fee = 0
    end
    return hoa_fee
  end

  def calculate_operating_expenses(insurance, monthly_tax, hoa_fees)
    expenses = insurance.to_i + monthly_tax + hoa_fees
    return expenses
  end

  def calculate_cash_flow(zillow_rent, operating_expenses, mortgage)
    cash = zillow_rent - operating_expenses - mortgage
    return cash
  end

  def payment_number(life_loan)
    total_number_of_payments = life_loan * 12
    return total_number_of_payments
  end

  def calculate_total_mortgage(list_price, down_payment)
    mortgage = list_price - down_payment.to_i
    return mortgage.to_i
  end


# nper = loan term, rate = interest_rate, pv = loan amount/mortgage
  def pmt(rate, nper, pv, fv=0, type=0)
    ((-pv * pvif(rate, nper) - fv ) / ((1.0 + rate * type) * fvifa(rate, nper)))
  end

  def ipmt(rate, per, nper, pv, fv=0, type=0)
    p = pmt(rate, nper, pv, fv, 0);
    ip = -(pv * pow1p(rate, per - 1) * rate + p * pow1pm1(rate, per - 1))
    (type == 0) ? ip : ip / (1 + rate)
  end

  def ppmt(rate, per, nper, pv, fv=0, type=0)
   p = pmt(rate, nper, pv, fv, type)
   ip = ipmt(rate, per, nper, pv, fv, type)
   p - ip
  end
  
  def pow1pm1(x, y)
    (x <= -1) ? ((1 + x) ** y) - 1 : Math.exp(y * Math.log(1.0 + x)) - 1
  end

  def pow1p(x, y)
    (x.abs > 0.5) ? ((1 + x) ** y) : Math.exp(y * Math.log(1.0 + x))
  end

  def pvif(rate, nper)
    pow1p(rate, nper)
  end

  def fvifa(rate, nper)
    (rate == 0) ? nper : pow1pm1(rate, nper) / rate
  end
end
