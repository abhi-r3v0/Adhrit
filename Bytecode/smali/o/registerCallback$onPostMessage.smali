.class public final Lo/registerCallback$onPostMessage;
.super Ljava/lang/Object;

# interfaces
.implements Lo/onChooseActivity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/registerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# static fields
.field public static final accessibility_action_clickable_span:I = 0x7f0b0013

.field public static final accessibility_custom_action_0:I = 0x7f0b0014

.field public static final accessibility_custom_action_1:I = 0x7f0b0015

.field public static final accessibility_custom_action_10:I = 0x7f0b0016

.field public static final accessibility_custom_action_11:I = 0x7f0b0017

.field public static final accessibility_custom_action_12:I = 0x7f0b0018

.field public static final accessibility_custom_action_13:I = 0x7f0b0019

.field public static final accessibility_custom_action_14:I = 0x7f0b001a

.field public static final accessibility_custom_action_15:I = 0x7f0b001b

.field public static final accessibility_custom_action_16:I = 0x7f0b001c

.field public static final accessibility_custom_action_17:I = 0x7f0b001d

.field public static final accessibility_custom_action_18:I = 0x7f0b001e

.field public static final accessibility_custom_action_19:I = 0x7f0b001f

.field public static final accessibility_custom_action_2:I = 0x7f0b0020

.field public static final accessibility_custom_action_20:I = 0x7f0b0021

.field public static final accessibility_custom_action_21:I = 0x7f0b0022

.field public static final accessibility_custom_action_22:I = 0x7f0b0023

.field public static final accessibility_custom_action_23:I = 0x7f0b0024

.field public static final accessibility_custom_action_24:I = 0x7f0b0025

.field public static final accessibility_custom_action_25:I = 0x7f0b0026

.field public static final accessibility_custom_action_26:I = 0x7f0b0027

.field public static final accessibility_custom_action_27:I = 0x7f0b0028

.field public static final accessibility_custom_action_28:I = 0x7f0b0029

.field public static final accessibility_custom_action_29:I = 0x7f0b002a

.field public static final accessibility_custom_action_3:I = 0x7f0b002b

.field public static final accessibility_custom_action_30:I = 0x7f0b002c

.field public static final accessibility_custom_action_31:I = 0x7f0b002d

.field public static final accessibility_custom_action_4:I = 0x7f0b002e

.field public static final accessibility_custom_action_5:I = 0x7f0b002f

.field public static final accessibility_custom_action_6:I = 0x7f0b0030

.field public static final accessibility_custom_action_7:I = 0x7f0b0031

.field public static final accessibility_custom_action_8:I = 0x7f0b0032

.field public static final accessibility_custom_action_9:I = 0x7f0b0033

.field public static final action_container:I = 0x7f0b0046

.field public static final action_divider:I = 0x7f0b0048

.field public static final action_image:I = 0x7f0b0049

.field public static final action_text:I = 0x7f0b004f

.field public static final actions:I = 0x7f0b0050

.field public static final async:I = 0x7f0b009b

.field public static final blocking:I = 0x7f0b00e6

.field public static final chronometer:I = 0x7f0b01ba

.field public static final dialog_button:I = 0x7f0b027c

.field public static final forever:I = 0x7f0b0360

.field public static final fragment_container_view_tag:I = 0x7f0b036d

.field public static final icon:I = 0x7f0b043d

.field public static final icon_group:I = 0x7f0b0449

.field public static final info:I = 0x7f0b0465

.field public static final italic:I = 0x7f0b0499

.field public static final line1:I = 0x7f0b04f1

.field public static final line3:I = 0x7f0b04f2

.field public static final normal:I = 0x7f0b05d5

.field public static final notification_background:I = 0x7f0b05e1

.field public static final notification_main_column:I = 0x7f0b05e2

.field public static final notification_main_column_container:I = 0x7f0b05e3

.field public static final right_icon:I = 0x7f0b0702

.field public static final right_side:I = 0x7f0b0705

.field public static final tag_accessibility_actions:I = 0x7f0b0867

.field public static final tag_accessibility_clickable_spans:I = 0x7f0b0868

.field public static final tag_accessibility_heading:I = 0x7f0b0869

.field public static final tag_accessibility_pane_title:I = 0x7f0b086a

.field public static final tag_screen_reader_focusable:I = 0x7f0b086b

.field public static final tag_transition_group:I = 0x7f0b086c

.field public static final tag_unhandled_key_event_manager:I = 0x7f0b086d

.field public static final tag_unhandled_key_listeners:I = 0x7f0b086e

.field public static final text:I = 0x7f0b0879

.field public static final text2:I = 0x7f0b087d

.field public static final time:I = 0x7f0b08ae

.field public static final title:I = 0x7f0b08b5

.field public static final visible_removing_fragment_view_tag:I = 0x7f0b0998


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/ActivityChooserView;Ljava/util/List;)V
    .locals 3
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
    iget p1, p1, Lo/ActivityChooserView;->asInterface:I

    add-int/lit8 p1, p1, 0x1

    .line 1014
    div-int/2addr v0, p1

    .line 1017
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/ViewDataBinding$4;

    .line 4015
    iget-object v1, v1, Landroidx/databinding/ViewDataBinding$4;->extraCallback:Landroid/graphics/Rect;

    add-int/2addr p2, v0

    .line 1022
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1023
    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    return-void
.end method
