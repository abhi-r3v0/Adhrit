.class public final Lo/onSupportContentChanged$onMessageChannelReady;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSupportContentChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# static fields
.field public static final abc_action_bar_home_description:I = 0x7f130007

.field public static final abc_action_bar_up_description:I = 0x7f130008

.field public static final abc_action_menu_overflow_description:I = 0x7f130009

.field public static final abc_action_mode_done:I = 0x7f13000a

.field public static final abc_activity_chooser_view_see_all:I = 0x7f13000b

.field public static final abc_activitychooserview_choose_application:I = 0x7f13000c

.field public static final abc_capital_off:I = 0x7f13000d

.field public static final abc_capital_on:I = 0x7f13000e

.field public static final abc_search_hint:I = 0x7f130019

.field public static final abc_searchview_description_clear:I = 0x7f13001a

.field public static final abc_searchview_description_query:I = 0x7f13001b

.field public static final abc_searchview_description_search:I = 0x7f13001c

.field public static final abc_searchview_description_submit:I = 0x7f13001d

.field public static final abc_searchview_description_voice:I = 0x7f13001e

.field public static final abc_shareactionprovider_share_with:I = 0x7f13001f

.field public static final abc_shareactionprovider_share_with_application:I = 0x7f130020

.field public static final abc_toolbar_collapse_description:I = 0x7f130021

.field public static final action_hide:I = 0x7f13002a

.field public static final action_resend:I = 0x7f13002c

.field public static final action_show:I = 0x7f13002d

.field public static final app_name:I = 0x7f130063

.field public static final axis_bank_accounts:I = 0x7f130078

.field public static final axis_build_version:I = 0x7f130079

.field public static final axis_debuggable:I = 0x7f13007a

.field public static final axis_tag:I = 0x7f13007b

.field public static final axis_terms_body:I = 0x7f13007c

.field public static final axis_terms_title:I = 0x7f13007d

.field public static final axis_version:I = 0x7f13007e

.field public static final back_button_exit_message:I = 0x7f130080

.field public static final bank_spinner_alert:I = 0x7f13009a

.field public static final componentMessage:I = 0x7f130120

.field public static final content_received:I = 0x7f130129

.field public static final create_a_vpa:I = 0x7f13012c

.field public static final detecting_otp:I = 0x7f130155

.field public static final dismiss:I = 0x7f13015f

.field public static final dui_build_version:I = 0x7f13017d

.field public static final dui_bundle_url:I = 0x7f13017e

.field public static final dui_config_url:I = 0x7f13017f

.field public static final dui_version:I = 0x7f130180

.field public static final enter_vpa_name:I = 0x7f1301a5

.field public static final error_msg:I = 0x7f1301a9

.field public static final forget_mpin_text:I = 0x7f1301f4

.field public static final go_back:I = 0x7f13026d

.field public static final info:I = 0x7f130291

.field public static final info_pins_dont_match:I = 0x7f130292

.field public static final invalid_otp:I = 0x7f130299

.field public static final is_dui_debuggable:I = 0x7f13029d

.field public static final link_bank_account:I = 0x7f1302c0

.field public static final link_your_bank_account:I = 0x7f1302c7

.field public static final no_account_found_message:I = 0x7f13031f

.field public static final not_right:I = 0x7f130327

.field public static final npci_atm_title:I = 0x7f130330

.field public static final npci_confirm_mpin_title:I = 0x7f130331

.field public static final npci_mpin_title:I = 0x7f130333

.field public static final npci_new_mpin_title:I = 0x7f130334

.field public static final npci_otp_title:I = 0x7f130335

.field public static final npci_set_mpin_title:I = 0x7f130336

.field public static final on_boarding_message_details_for_dual_sim:I = 0x7f13033b

.field public static final on_boarding_message_details_for_single_sim:I = 0x7f13033c

.field public static final other_upi:I = 0x7f130343

.field public static final select_msg:I = 0x7f1303ed

.field public static final select_vpa:I = 0x7f1303ee

.field public static final session_expired:I = 0x7f1303f8

.field public static final set_vpa:I = 0x7f1303fc

.field public static final sms_charge_details:I = 0x7f13040f

.field public static final status_bar_notification_info_overflow:I = 0x7f130451

.field public static final vpa_created:I = 0x7f1304e7

.field public static final vpa_information_body:I = 0x7f1304e8

.field public static final vpa_information_title:I = 0x7f1304e9

.field public static final vpa_validation_message:I = 0x7f1304ea


# instance fields
.field public extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

.field public final onMessageChannelReady:[B

.field public onNavigationEvent:Ljava/nio/ByteBuffer;

.field public onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 1121
    iput-object v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onMessageChannelReady:[B

    const/4 v0, 0x0

    .line 1125
    iput v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onPostMessage:I

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 1

    .line 8351
    :cond_0
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback()V

    .line 8358
    iget v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onPostMessage:I

    if-lez v0, :cond_2

    .line 8513
    iget-object v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget v0, v0, Lo/onSupportContentChanged$onNavigationEvent;->onPostMessage:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private asInterface()I
    .locals 2

    .line 11497
    :try_start_0
    iget-object v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 11499
    :catch_0
    iget-object v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    const/4 v1, 0x1

    iput v1, v0, Lo/onSupportContentChanged$onNavigationEvent;->onPostMessage:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private extraCallback()V
    .locals 6

    .line 11470
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->asInterface()I

    move-result v0

    iput v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onPostMessage:I

    if-lez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 11475
    :goto_0
    :try_start_0
    iget v2, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onPostMessage:I

    if-ge v0, v2, :cond_0

    .line 11476
    iget v1, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onPostMessage:I

    sub-int/2addr v1, v0

    .line 11477
    iget-object v2, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onMessageChannelReady:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "GifHeaderParser"

    .line 11482
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11483
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Error Reading Block n: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " count: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " blockSize: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onPostMessage:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11486
    :cond_1
    iget-object v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    const/4 v1, 0x1

    iput v1, v0, Lo/onSupportContentChanged$onNavigationEvent;->onPostMessage:I

    :cond_2
    return-void
.end method

.method private extraCallback(I)[I
    .locals 9

    mul-int/lit8 v0, p1, 0x3

    .line 11418
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 11421
    :try_start_0
    iget-object v2, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 11429
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    .line 11430
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 11431
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    .line 11432
    aput v3, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    move v2, v7

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "GifHeaderParser"

    const/4 v2, 0x3

    .line 11435
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Format Error Reading Color Table"

    .line 11436
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11438
    :cond_0
    iget-object p1, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    const/4 v0, 0x1

    iput v0, p1, Lo/onSupportContentChanged$onNavigationEvent;->onPostMessage:I

    :cond_1
    return-object v1
.end method

.method private onPostMessage()V
    .locals 3

    .line 11460
    :cond_0
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->asInterface()I

    move-result v0

    .line 11461
    iget-object v1, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 11462
    iget-object v2, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method


# virtual methods
.method public onMessageChannelReady()V
    .locals 8

    .line 9366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 9368
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->asInterface()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9370
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GIF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 9371
    iget-object v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iput v2, v0, Lo/onSupportContentChanged$onNavigationEvent;->onPostMessage:I

    return-void

    .line 9386
    :cond_1
    iget-object v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    .line 9509
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 9386
    iput v3, v0, Lo/onSupportContentChanged$onNavigationEvent;->asInterface:I

    .line 9387
    iget-object v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    .line 10509
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 9387
    iput v3, v0, Lo/onSupportContentChanged$onNavigationEvent;->onTransact:I

    .line 9399
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->asInterface()I

    move-result v0

    .line 9400
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v3, Lo/onSupportContentChanged$onNavigationEvent;->onRelationshipValidationResult:Z

    .line 9401
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v2

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v0, v4

    iput v0, v3, Lo/onSupportContentChanged$onNavigationEvent;->asBinder:I

    .line 9403
    iget-object v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->asInterface()I

    move-result v3

    iput v3, v0, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 9405
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->asInterface()I

    .line 9375
    iget-object v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-boolean v0, v0, Lo/onSupportContentChanged$onNavigationEvent;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_4

    .line 10513
    iget-object v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget v0, v0, Lo/onSupportContentChanged$onNavigationEvent;->onPostMessage:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    .line 9376
    iget-object v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget v1, v0, Lo/onSupportContentChanged$onNavigationEvent;->asBinder:I

    invoke-direct {p0, v1}, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback(I)[I

    move-result-object v1

    iput-object v1, v0, Lo/onSupportContentChanged$onNavigationEvent;->extraCallback:[I

    .line 9377
    iget-object v0, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v1, v0, Lo/onSupportContentChanged$onNavigationEvent;->extraCallback:[I

    iget-object v2, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget v2, v2, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback$Stub:I

    aget v1, v1, v2

    iput v1, v0, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:I

    :cond_4
    return-void
.end method

.method public onNavigationEvent()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_13

    .line 1513
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->onPostMessage:I

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_13

    .line 1202
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback:I

    const v4, 0x7fffffff

    if-gt v3, v4, :cond_13

    .line 1203
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->asInterface()I

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_9

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_2

    .line 1254
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iput v1, v3, Lo/onSupportContentChanged$onNavigationEvent;->onPostMessage:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1210
    :cond_3
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    if-nez v3, :cond_4

    .line 1211
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    new-instance v4, Lo/onSupportContentChanged$extraCallback;

    invoke-direct {v4}, Lo/onSupportContentChanged$extraCallback;-><init>()V

    iput-object v4, v3, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    .line 2303
    :cond_4
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    .line 2509
    iget-object v4, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 2303
    iput v4, v3, Lo/onSupportContentChanged$extraCallback;->extraCallback:I

    .line 2304
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    .line 3509
    iget-object v4, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 2304
    iput v4, v3, Lo/onSupportContentChanged$extraCallback;->onPostMessage:I

    .line 2305
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    .line 4509
    iget-object v4, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 2305
    iput v4, v3, Lo/onSupportContentChanged$extraCallback;->onMessageChannelReady:I

    .line 2306
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    .line 5509
    iget-object v4, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 2306
    iput v4, v3, Lo/onSupportContentChanged$extraCallback;->onNavigationEvent:I

    .line 2320
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->asInterface()I

    move-result v3

    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    and-int/lit8 v7, v3, 0x7

    add-int/2addr v7, v1

    int-to-double v7, v7

    .line 2322
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    .line 2323
    iget-object v6, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v6, v6, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, v6, Lo/onSupportContentChanged$extraCallback;->ICustomTabsCallback:Z

    if-eqz v4, :cond_7

    .line 2325
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    invoke-direct {p0, v5}, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback(I)[I

    move-result-object v4

    iput-object v4, v3, Lo/onSupportContentChanged$extraCallback;->warmup:[I

    goto :goto_4

    .line 2328
    :cond_7
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    const/4 v4, 0x0

    iput-object v4, v3, Lo/onSupportContentChanged$extraCallback;->warmup:[I

    .line 2332
    :goto_4
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    iget-object v4, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v4

    iput v4, v3, Lo/onSupportContentChanged$extraCallback;->onTransact:I

    .line 6449
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->asInterface()I

    .line 6451
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->onPostMessage()V

    .line 6513
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->onPostMessage:I

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_0

    .line 2341
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget v4, v3, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback:I

    add-int/2addr v4, v1

    iput v4, v3, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback:I

    .line 2343
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->onMessageChannelReady:Ljava/util/List;

    iget-object v4, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v4, v4, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1216
    :cond_9
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->asInterface()I

    move-result v3

    if-eq v3, v1, :cond_12

    const/16 v4, 0xf9

    if-eq v3, v4, :cond_e

    const/16 v4, 0xfe

    if-eq v3, v4, :cond_d

    const/16 v4, 0xff

    if-eq v3, v4, :cond_a

    .line 1244
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->onPostMessage()V

    goto/16 :goto_0

    .line 1224
    :cond_a
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback()V

    .line 1225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_6
    const/16 v5, 0xb

    if-ge v4, v5, :cond_b

    .line 1227
    iget-object v5, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onMessageChannelReady:[B

    aget-byte v5, v5, v4

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1229
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1230
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->ICustomTabsCallback()V

    goto/16 :goto_0

    .line 1233
    :cond_c
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->onPostMessage()V

    goto/16 :goto_0

    .line 1237
    :cond_d
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->onPostMessage()V

    goto/16 :goto_0

    .line 1220
    :cond_e
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    new-instance v4, Lo/onSupportContentChanged$extraCallback;

    invoke-direct {v4}, Lo/onSupportContentChanged$extraCallback;-><init>()V

    iput-object v4, v3, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    .line 7264
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->asInterface()I

    .line 7276
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->asInterface()I

    move-result v3

    .line 7279
    iget-object v4, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v4, v4, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    and-int/lit8 v5, v3, 0x1c

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    iput v5, v4, Lo/onSupportContentChanged$extraCallback;->asBinder:I

    .line 7280
    iget-object v4, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v4, v4, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    iget v4, v4, Lo/onSupportContentChanged$extraCallback;->asBinder:I

    if-nez v4, :cond_f

    .line 7282
    iget-object v4, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v4, v4, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    iput v1, v4, Lo/onSupportContentChanged$extraCallback;->asBinder:I

    .line 7284
    :cond_f
    iget-object v4, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v4, v4, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    :goto_7
    iput-boolean v3, v4, Lo/onSupportContentChanged$extraCallback;->asInterface:Z

    .line 7509
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v6, :cond_11

    const/16 v3, 0xa

    .line 7291
    :cond_11
    iget-object v5, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v5, v5, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    mul-int/lit8 v3, v3, 0xa

    iput v3, v5, Lo/onSupportContentChanged$extraCallback;->onRelationshipValidationResult:I

    .line 7293
    iget-object v3, p0, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->onNavigationEvent:Lo/onSupportContentChanged$extraCallback;

    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->asInterface()I

    move-result v4

    iput v4, v3, Lo/onSupportContentChanged$extraCallback;->ICustomTabsCallback$Stub:I

    .line 7295
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->asInterface()I

    goto/16 :goto_0

    .line 1240
    :cond_12
    invoke-direct {p0}, Lo/onSupportContentChanged$onMessageChannelReady;->onPostMessage()V

    goto/16 :goto_0

    :cond_13
    return-void
.end method
