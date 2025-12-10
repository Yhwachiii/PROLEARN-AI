import flet as ft
from config import APP_THEME
from pages.common import show_welcome_page

def main(page: ft.Page):
    page.theme = APP_THEME
    page.window_width = 375  # iPhone SE width
    page.window_height = 667  # iPhone SE height
    page.window_resizable = False
    page.window_maximizable = False
    page.window_minimizable = False
    show_welcome_page(page)

ft.app(target=main)
