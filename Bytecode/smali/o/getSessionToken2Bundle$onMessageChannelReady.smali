.class public final Lo/getSessionToken2Bundle$onMessageChannelReady;
.super Ljava/lang/Object;

# interfaces
.implements Lo/sort;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSessionToken2Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# static fields
.field public static final action_container:I = 0x7f0b0046

.field public static final action_divider:I = 0x7f0b0048

.field public static final action_image:I = 0x7f0b0049

.field public static final action_text:I = 0x7f0b004f

.field public static final actions:I = 0x7f0b0050

.field public static final async:I = 0x7f0b009b

.field public static final blocking:I = 0x7f0b00e6

.field public static final bottom:I = 0x7f0b00f6

.field public static final chronometer:I = 0x7f0b01ba

.field public static final dataBinding:I = 0x7f0b025d

.field public static final end:I = 0x7f0b02d3

.field public static final forever:I = 0x7f0b0360

.field public static final icon:I = 0x7f0b043d

.field public static final icon_group:I = 0x7f0b0449

.field public static final info:I = 0x7f0b0465

.field public static final italic:I = 0x7f0b0499

.field public static final left:I = 0x7f0b04d3

.field public static final line1:I = 0x7f0b04f1

.field public static final line3:I = 0x7f0b04f2

.field public static final none:I = 0x7f0b05d4

.field public static final normal:I = 0x7f0b05d5

.field public static final notification_background:I = 0x7f0b05e1

.field public static final notification_main_column:I = 0x7f0b05e2

.field public static final notification_main_column_container:I = 0x7f0b05e3

.field public static final right:I = 0x7f0b06fc

.field public static final right_icon:I = 0x7f0b0702

.field public static final right_side:I = 0x7f0b0705

.field public static final start:I = 0x7f0b07fd

.field public static final tag_transition_group:I = 0x7f0b086c

.field public static final tag_unhandled_key_event_manager:I = 0x7f0b086d

.field public static final tag_unhandled_key_listeners:I = 0x7f0b086e

.field public static final text:I = 0x7f0b0879

.field public static final text2:I = 0x7f0b087d

.field public static final time:I = 0x7f0b08ae

.field public static final title:I = 0x7f0b08b5

.field public static final top:I = 0x7f0b08d3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)Lo/onChooseActivity;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 1021
    new-instance p1, Lo/registerCallback;

    invoke-direct {p1}, Lo/registerCallback;-><init>()V

    return-object p1

    .line 1014
    :cond_0
    new-instance p1, Lo/getRating;

    invoke-direct {p1}, Lo/getRating;-><init>()V

    return-object p1

    .line 1012
    :cond_1
    new-instance p1, Lo/RatingCompat$StarStyle;

    invoke-direct {p1}, Lo/RatingCompat$StarStyle;-><init>()V

    return-object p1

    .line 1016
    :cond_2
    new-instance p1, Lo/registerCallbackListener;

    invoke-direct {p1}, Lo/registerCallbackListener;-><init>()V

    return-object p1

    .line 1018
    :cond_3
    new-instance p1, Lo/fastForward;

    invoke-direct {p1}, Lo/fastForward;-><init>()V

    return-object p1
.end method
