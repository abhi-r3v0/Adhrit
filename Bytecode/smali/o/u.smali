.class public final Lo/u;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/u$onMessageChannelReady;,
        Lo/u$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/media/AudioManager;

.field private ICustomTabsCallback$Stub:Z

.field private asBinder:F

.field private asInterface:Landroid/media/AudioFocusRequest;

.field private extraCallback:Lo/u$b;

.field private onMessageChannelReady:I

.field private final onNavigationEvent:Lo/u$onMessageChannelReady;

.field private final onPostMessage:Lo/u$onNavigationEvent;

.field private onRelationshipValidationResult:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/u$onNavigationEvent;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 110
    iput v0, p0, Lo/u;->asBinder:F

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lo/u;->ICustomTabsCallback:Landroid/media/AudioManager;

    .line 124
    iput-object p2, p0, Lo/u;->onPostMessage:Lo/u$onNavigationEvent;

    .line 125
    new-instance p1, Lo/u$onMessageChannelReady;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lo/u$onMessageChannelReady;-><init>(Lo/u;Lo/u$5;)V

    iput-object p1, p0, Lo/u;->onNavigationEvent:Lo/u$onMessageChannelReady;

    const/4 p1, 0x0

    .line 126
    iput p1, p0, Lo/u;->onMessageChannelReady:I

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, v0}, Lo/u;->extraCallback(Z)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/u;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/u;->onRelationshipValidationResult()Z

    move-result p0

    return p0
.end method

.method private ICustomTabsCallback$Stub()I
    .locals 3

    .line 271
    iget-object v0, p0, Lo/u;->asInterface:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/u;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_2

    .line 272
    :cond_0
    iget-object v0, p0, Lo/u;->asInterface:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Lo/u;->onRelationshipValidationResult:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v1, p0, Lo/u;->asInterface:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    .line 277
    :goto_0
    invoke-direct {p0}, Lo/u;->onRelationshipValidationResult()Z

    move-result v1

    .line 278
    iget-object v2, p0, Lo/u;->extraCallback:Lo/u$b;

    .line 280
    invoke-static {v2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/u$b;

    invoke-virtual {v2}, Lo/u$b;->ICustomTabsCallback()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lo/u;->onNavigationEvent:Lo/u$onMessageChannelReady;

    .line 282
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lo/u;->asInterface:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lo/u;->ICustomTabsCallback$Stub:Z

    .line 287
    :cond_2
    iget-object v0, p0, Lo/u;->ICustomTabsCallback:Landroid/media/AudioManager;

    iget-object v1, p0, Lo/u;->asInterface:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private asInterface()V
    .locals 2

    .line 291
    iget-object v0, p0, Lo/u;->ICustomTabsCallback:Landroid/media/AudioManager;

    iget-object v1, p0, Lo/u;->onNavigationEvent:Lo/u$onMessageChannelReady;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private static extraCallback(Lo/u$b;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 321
    :cond_0
    iget v1, p0, Lo/u$b;->onNavigationEvent:I

    const/4 v2, 0x3

    const-string v3, "AudioFocusManager"

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 379
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unidentified audio usage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lo/u$b;->onNavigationEvent:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 365
    :pswitch_1
    sget p0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    return v4

    .line 373
    :pswitch_2
    iget p0, p0, Lo/u$b;->onPostMessage:I

    if-ne p0, v5, :cond_2

    return v4

    :cond_2
    :pswitch_3
    return v2

    :pswitch_4
    return v0

    :pswitch_5
    return v4

    :pswitch_6
    return v5

    :pswitch_7
    const-string p0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    .line 337
    invoke-static {v3, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic extraCallback(Lo/u;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/u;->extraCallback(Z)V

    return-void
.end method

.method private extraCallback(Z)V
    .locals 2

    .line 246
    iget v0, p0, Lo/u;->onRelationshipValidationResult:I

    if-nez v0, :cond_0

    iget v0, p0, Lo/u;->onMessageChannelReady:I

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget v0, p0, Lo/u;->onRelationshipValidationResult:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/u;->onMessageChannelReady:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_3

    .line 253
    :cond_1
    sget p1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_2

    .line 254
    invoke-direct {p0}, Lo/u;->onTransact()V

    goto :goto_0

    .line 256
    :cond_2
    invoke-direct {p0}, Lo/u;->asInterface()V

    :goto_0
    const/4 p1, 0x0

    .line 258
    iput p1, p0, Lo/u;->onMessageChannelReady:I

    :cond_3
    return-void
.end method

.method private onMessageChannelReady()I
    .locals 4

    .line 213
    iget v0, p0, Lo/u;->onRelationshipValidationResult:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 214
    iget v0, p0, Lo/u;->onMessageChannelReady:I

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, v1}, Lo/u;->extraCallback(Z)V

    :cond_0
    return v1

    .line 220
    :cond_1
    iget v0, p0, Lo/u;->onMessageChannelReady:I

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 221
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    .line 222
    invoke-direct {p0}, Lo/u;->ICustomTabsCallback$Stub()I

    move-result v0

    goto :goto_0

    .line 224
    :cond_2
    invoke-direct {p0}, Lo/u;->onPostMessage()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 226
    :goto_1
    iput v0, p0, Lo/u;->onMessageChannelReady:I

    .line 232
    :cond_4
    iget v0, p0, Lo/u;->onMessageChannelReady:I

    if-nez v0, :cond_5

    const/4 v0, -0x1

    return v0

    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method static synthetic onMessageChannelReady(Lo/u;)Lo/u$onNavigationEvent;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/u;->onPostMessage:Lo/u$onNavigationEvent;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/u;F)F
    .locals 0

    .line 38
    iput p1, p0, Lo/u;->asBinder:F

    return p1
.end method

.method static synthetic onNavigationEvent(Lo/u;)I
    .locals 0

    .line 38
    iget p0, p0, Lo/u;->onMessageChannelReady:I

    return p0
.end method

.method private onNavigationEvent(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic onPostMessage(Lo/u;)F
    .locals 0

    .line 38
    iget p0, p0, Lo/u;->asBinder:F

    return p0
.end method

.method private onPostMessage()I
    .locals 4

    .line 263
    iget-object v0, p0, Lo/u;->ICustomTabsCallback:Landroid/media/AudioManager;

    iget-object v1, p0, Lo/u;->onNavigationEvent:Lo/u$onMessageChannelReady;

    iget-object v2, p0, Lo/u;->extraCallback:Lo/u$b;

    .line 265
    invoke-static {v2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/u$b;

    iget v2, v2, Lo/u$b;->onNavigationEvent:I

    invoke-static {v2}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(I)I

    move-result v2

    iget v3, p0, Lo/u;->onRelationshipValidationResult:I

    .line 263
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method static synthetic onPostMessage(Lo/u;I)I
    .locals 0

    .line 38
    iput p1, p0, Lo/u;->onMessageChannelReady:I

    return p1
.end method

.method private onRelationshipValidationResult()Z
    .locals 2

    .line 302
    iget-object v0, p0, Lo/u;->extraCallback:Lo/u$b;

    if-eqz v0, :cond_0

    iget v0, v0, Lo/u$b;->onPostMessage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onTransact()V
    .locals 2

    .line 296
    iget-object v0, p0, Lo/u;->asInterface:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 297
    iget-object v1, p0, Lo/u;->ICustomTabsCallback:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    const/4 v0, 0x1

    .line 194
    invoke-direct {p0, v0}, Lo/u;->extraCallback(Z)V

    return-void
.end method

.method public final onMessageChannelReady(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 172
    invoke-direct {p0}, Lo/u;->onMessageChannelReady()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final onNavigationEvent()F
    .locals 1

    .line 131
    iget v0, p0, Lo/u;->asBinder:F

    return v0
.end method

.method public final onNavigationEvent(Lo/u$b;ZI)I
    .locals 2

    .line 146
    iget-object v0, p0, Lo/u;->extraCallback:Lo/u$b;

    invoke-static {v0, p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 147
    iput-object p1, p0, Lo/u;->extraCallback:Lo/u$b;

    .line 148
    invoke-static {p1}, Lo/u;->extraCallback(Lo/u$b;)I

    move-result p1

    iput p1, p0, Lo/u;->onRelationshipValidationResult:I

    if-eq p1, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    .line 150
    invoke-static {p1, v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(ZLjava/lang/Object;)V

    if-eqz p2, :cond_3

    const/4 p1, 0x2

    if-eq p3, p1, :cond_2

    const/4 p1, 0x3

    if-ne p3, p1, :cond_3

    .line 155
    :cond_2
    invoke-direct {p0}, Lo/u;->onMessageChannelReady()I

    move-result p1

    return p1

    :cond_3
    if-ne p3, v1, :cond_4

    .line 160
    invoke-direct {p0, p2}, Lo/u;->onNavigationEvent(Z)I

    move-result p1

    return p1

    .line 161
    :cond_4
    invoke-virtual {p0, p2}, Lo/u;->onMessageChannelReady(Z)I

    move-result p1

    return p1
.end method

.method public final onPostMessage(ZI)I
    .locals 1

    if-nez p1, :cond_0

    .line 185
    invoke-direct {p0}, Lo/u;->ICustomTabsCallback()V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 189
    invoke-direct {p0, p1}, Lo/u;->onNavigationEvent(Z)I

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0}, Lo/u;->onMessageChannelReady()I

    move-result p1

    return p1
.end method
