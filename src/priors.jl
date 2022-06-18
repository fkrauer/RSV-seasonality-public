@model function prior_mises()
    ρ₀ ~ Beta(1.0, 30.0)
    ψ ~ Beta(1.0, 30.0)
    q ~ Uniform(0.0, 0.001) 
    β₀ ~ Gamma(3.0, 1.0) 
    η ~ Uniform(0.0, 2.0) 
    ω ~ truncated(Normal(250.0, 125.0), 60, 730.0) 
    φ ~ truncated(Normal(180.0, 40.0), 0.0, 364.0) 
    k ~ Uniform(0.0, 3.0)
    δ₁ ~ Beta(35.583, 11.417) 
    δ₂ ~ Beta(22.829, 3.171) 
    δ₃ ~ Beta(6.117, 12.882)

    return @LArray [ρ₀, ψ, q, β₀, η, ω, φ, k, δ₁, δ₂, δ₃] (:ρ₀, :ψ, :q, :β₀, :η, :ω, :φ, :k, :δ₁, :δ₂, :δ₃)
end

@model function prior_cosine()
    ρ₀ ~ Beta(1.0, 30.0)
    ψ ~ Beta(1.0, 30.0)
    q ~ Uniform(0.0, 0.001) 
    β₀ ~ Gamma(3.0, 1.0) 
    η ~ Uniform(0.0, 1.0) 
    ω ~ truncated(Normal(250.0, 125.0), 60, 730.0) 
    φ ~ truncated(Normal(180.0, 40.0), 0.0, 364.0) 
    δ₁ ~ Beta(35.583, 11.417)
    δ₂ ~ Beta(22.829, 3.171)   
    δ₃ ~ Beta(6.117, 12.882)  

    return @LArray [ρ₀, ψ, q, β₀, η, ω, φ, δ₁, δ₂, δ₃] (:ρ₀, :ψ, :q, :β₀, :η, :ω, :φ, :δ₁, :δ₂, :δ₃)
end
