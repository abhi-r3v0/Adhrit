.class public final Lo/onFastForward$onNavigationEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lo/onChooseActivity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onFastForward;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# static fields
.field public static final abc_action_bar_title_item:I = 0x7f0e0000

.field public static final abc_action_bar_up_container:I = 0x7f0e0001

.field public static final abc_action_menu_item_layout:I = 0x7f0e0002

.field public static final abc_action_menu_layout:I = 0x7f0e0003

.field public static final abc_action_mode_bar:I = 0x7f0e0004

.field public static final abc_action_mode_close_item_material:I = 0x7f0e0005

.field public static final abc_activity_chooser_view:I = 0x7f0e0006

.field public static final abc_activity_chooser_view_list_item:I = 0x7f0e0007

.field public static final abc_alert_dialog_button_bar_material:I = 0x7f0e0008

.field public static final abc_alert_dialog_material:I = 0x7f0e0009

.field public static final abc_alert_dialog_title_material:I = 0x7f0e000a

.field public static final abc_cascading_menu_item_layout:I = 0x7f0e000b

.field public static final abc_dialog_title_material:I = 0x7f0e000c

.field public static final abc_expanded_menu_layout:I = 0x7f0e000d

.field public static final abc_list_menu_item_checkbox:I = 0x7f0e000e

.field public static final abc_list_menu_item_icon:I = 0x7f0e000f

.field public static final abc_list_menu_item_layout:I = 0x7f0e0010

.field public static final abc_list_menu_item_radio:I = 0x7f0e0011

.field public static final abc_popup_menu_header_item_layout:I = 0x7f0e0012

.field public static final abc_popup_menu_item_layout:I = 0x7f0e0013

.field public static final abc_screen_content_include:I = 0x7f0e0014

.field public static final abc_screen_simple:I = 0x7f0e0015

.field public static final abc_screen_simple_overlay_action_mode:I = 0x7f0e0016

.field public static final abc_screen_toolbar:I = 0x7f0e0017

.field public static final abc_search_dropdown_item_icons_2line:I = 0x7f0e0018

.field public static final abc_search_view:I = 0x7f0e0019

.field public static final abc_select_dialog_material:I = 0x7f0e001a

.field public static final abc_tooltip:I = 0x7f0e001b

.field public static final expand_button:I = 0x7f0e0081

.field public static final notification_action:I = 0x7f0e02d1

.field public static final notification_action_tombstone:I = 0x7f0e02d2

.field public static final notification_template_custom_big:I = 0x7f0e02d9

.field public static final notification_template_icon_group:I = 0x7f0e02da

.field public static final notification_template_part_chronometer:I = 0x7f0e02de

.field public static final notification_template_part_time:I = 0x7f0e02df

.field public static final preference:I = 0x7f0e02ed

.field public static final preference_category:I = 0x7f0e02ee

.field public static final preference_category_material:I = 0x7f0e02ef

.field public static final preference_dialog_edittext:I = 0x7f0e02f0

.field public static final preference_dropdown:I = 0x7f0e02f1

.field public static final preference_dropdown_material:I = 0x7f0e02f2

.field public static final preference_information:I = 0x7f0e02f3

.field public static final preference_information_material:I = 0x7f0e02f4

.field public static final preference_list_fragment:I = 0x7f0e02f5

.field public static final preference_material:I = 0x7f0e02f6

.field public static final preference_recyclerview:I = 0x7f0e02f7

.field public static final preference_widget_checkbox:I = 0x7f0e02f8

.field public static final preference_widget_seekbar:I = 0x7f0e02f9

.field public static final preference_widget_seekbar_material:I = 0x7f0e02fa

.field public static final preference_widget_switch:I = 0x7f0e02fb

.field public static final preference_widget_switch_compat:I = 0x7f0e02fc

.field public static final select_dialog_item_material:I = 0x7f0e0307

.field public static final select_dialog_multichoice_material:I = 0x7f0e0308

.field public static final select_dialog_singlechoice_material:I = 0x7f0e0309

.field public static final support_simple_spinner_dropdown_item:I = 0x7f0e031b


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/ActivityChooserView;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityChooserView;",
            "Ljava/util/List<",
            "Landroidx/databinding/ViewDataBinding$4;",
            ">;)V"
        }
    .end annotation

    .line 2477
    iget-object v0, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->onPostMessage()I

    move-result v0

    .line 2485
    iget-object v1, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v1}, Lo/getWindowAnimations;->ICustomTabsCallback()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2008
    invoke-virtual {p1}, Lo/ActivityChooserView;->getInterfaceDescriptor()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3288
    iget v1, p1, Lo/ActivityChooserView;->asInterface:I

    .line 1014
    div-int/2addr v0, v1

    .line 1017
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/databinding/ViewDataBinding$4;

    .line 4015
    iget-object v2, v2, Landroidx/databinding/ViewDataBinding$4;->extraCallback:Landroid/graphics/Rect;

    .line 1020
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 4477
    iget-object v4, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v4}, Lo/getWindowAnimations;->onPostMessage()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 5477
    iget-object v3, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v3}, Lo/getWindowAnimations;->onPostMessage()I

    move-result v3

    .line 1023
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 1025
    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 6477
    iget-object v3, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v3}, Lo/getWindowAnimations;->onPostMessage()I

    move-result v3

    .line 1026
    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1027
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1031
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    .line 1033
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    return-void
.end method
