# before suite
Before do
  page.current_window.resize_to(1440, 900)
end

# after suite
After do
  path = page.save_screenshot("logs/screenshots/temp_ss.png")
  # log path

  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(path)
  )
end
