import flet as ft

# Global configuration for the app
APP_THEME = ft.Theme(
    color_scheme=ft.ColorScheme(
        primary="blue_grey",
        primary_container="blue_grey_50",
        secondary="blue_grey_200"
    )
)

# Common colors
PRIMARY_COLOR = "blue_grey"
TEXT_COLOR = "blue_grey_900"
SUBTITLE_COLOR = "blue_grey_600"

# Button styles
BUTTON_STYLE = ft.ButtonStyle(
    bgcolor=PRIMARY_COLOR,
    color="white",
    elevation=2,
    shape=ft.RoundedRectangleBorder(radius=8)
)

# App metadata
APP_TITLE = "ProLearn AI"
APP_SUBTITLE = "Adaptive Learning & Task Monitoring System"
