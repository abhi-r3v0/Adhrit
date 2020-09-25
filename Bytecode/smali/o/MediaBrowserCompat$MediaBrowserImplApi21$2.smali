.class public Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;
.super Lo/onAudioInfoChanged;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:Z

.field private asBinder:Landroid/content/Context;

.field private asInterface:Landroid/widget/ImageView;

.field public extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;

.field private final newSession:Landroid/content/DialogInterface$OnClickListener;

.field public onMessageChannelReady:Landroid/content/DialogInterface$OnClickListener;

.field onNavigationEvent:Landroid/os/Bundle;

.field private onPostMessage:I

.field private onRelationshipValidationResult:Landroid/widget/TextView;

.field private onTransact:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lo/onAudioInfoChanged;-><init>()V

    .line 129
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->ICustomTabsCallback$Stub:Z

    .line 152
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->newSession:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private ICustomTabsCallback(I)V
    .locals 3

    .line 377
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->asInterface:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 385
    iget v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onTransact:I

    invoke-direct {p0, v0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 390
    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 394
    :goto_0
    iget-object v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->asInterface:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_3

    .line 395
    iget v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onTransact:I

    invoke-static {v0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->ICustomTabsCallback(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 399
    :cond_3
    iput p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onTransact:I

    :cond_4
    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x2

    .line 4419
    invoke-direct {p0, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->ICustomTabsCallback(I)V

    .line 4420
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4423
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4424
    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onPostMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4425
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4429
    :cond_0
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->asBinder:Landroid/content/Context;

    .line 4430
    invoke-static {p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback(Landroid/content/Context;)I

    move-result p0

    int-to-long v1, p0

    .line 4429
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private static ICustomTabsCallback(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v1, :cond_1

    if-ne p1, v2, :cond_1

    return v1

    :cond_1
    if-ne p0, v2, :cond_2

    if-ne p1, v1, :cond_2

    return v1

    :cond_2
    if-ne p0, v1, :cond_3

    const/4 p0, 0x3

    if-ne p1, p0, :cond_3

    :cond_3
    return v0
.end method

.method static extraCallback(Landroid/content/Context;)I
    .locals 4

    if-eqz p0, :cond_1

    .line 333
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 4190
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4194
    :cond_0
    sget v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->hide_fingerprint_instantly_prefixes:I

    invoke-static {p0, v0, v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    return v3

    :cond_1
    const/16 p0, 0x7d0

    return p0
.end method

.method static synthetic extraCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)V
    .locals 2

    const/4 v0, 0x1

    .line 5464
    invoke-direct {p0, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->ICustomTabsCallback(I)V

    .line 5467
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 5468
    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->ICustomTabsCallback:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5469
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onRelationshipValidationResult:Landroid/widget/TextView;

    iget-object p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->asBinder:Landroid/content/Context;

    sget v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->fingerprint_dialog_touch_sensor:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic extraCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->ICustomTabsCallback$Stub:Z

    return p1
.end method

.method private onMessageChannelReady(I)I
    .locals 4

    .line 287
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 288
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->asBinder:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    .line 289
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 290
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 292
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 293
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method static synthetic onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->newSession:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;Ljava/lang/CharSequence;)V
    .locals 3

    .line 4453
    iget-boolean v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_1

    .line 5321
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "FingerprintDialogFrag"

    const-string v0, "Failed to dismiss fingerprint dialog fragment. Fragment manager was null."

    .line 5322
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5325
    :cond_0
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->onMessageChannelReady()V

    goto :goto_1

    .line 5435
    :cond_1
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 5436
    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onPostMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_2

    .line 5438
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5440
    :cond_2
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onRelationshipValidationResult:Landroid/widget/TextView;

    sget v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->fingerprint_error_lockout:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 5444
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;

    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$2;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$2;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)V

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->asBinder:Landroid/content/Context;

    .line 5449
    invoke-static {v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback(Landroid/content/Context;)I

    move-result v1

    int-to-long v1, v1

    .line 5444
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    const/4 p1, 0x1

    .line 4460
    iput-boolean p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method private onNavigationEvent(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    .line 360
    sget p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->fingerprint_dialog_fp_to_error:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 362
    sget p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->fingerprint_dialog_fp_to_error:I

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    .line 364
    sget p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->fingerprint_dialog_error_to_fp:I

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 368
    sget p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->fingerprint_dialog_error_to_fp:I

    .line 372
    :goto_0
    iget-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->asBinder:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x2

    .line 4404
    invoke-direct {p0, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->ICustomTabsCallback(I)V

    .line 4405
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4408
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4409
    iget v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onPostMessage:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4410
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4414
    :cond_0
    iget-object p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)Z
    .locals 1

    .line 6338
    iget-object p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent:Landroid/os/Bundle;

    const-string v0, "allow_device_credential"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)Landroid/os/Bundle;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent:Landroid/os/Bundle;

    return-object p0
.end method

.method static onPostMessage()Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;
    .locals 1

    .line 96
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;-><init>()V

    return-object v0
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, "SavedBundle"

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent:Landroid/os/Bundle;

    .line 183
    :cond_0
    new-instance p1, Lo/onTransact$onNavigationEvent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/onTransact$onNavigationEvent;-><init>(Landroid/content/Context;)V

    .line 184
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1377
    iget-object v1, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v0, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 2358
    iget-object v0, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v0, v0, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Landroid/content/Context;

    .line 188
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;->fingerprint_dialog_layout:I

    const/4 v2, 0x0

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 191
    sget v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->fingerprint_subtitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 192
    sget v2, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->fingerprint_description:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 194
    iget-object v3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent:Landroid/os/Bundle;

    const-string/jumbo v4, "subtitle"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 196
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 197
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 200
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :goto_0
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent:Landroid/os/Bundle;

    const-string v3, "description"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 205
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 208
    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 209
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :goto_1
    sget v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->fingerprint_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->asInterface:Landroid/widget/ImageView;

    .line 213
    sget v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->fingerprint_error:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onRelationshipValidationResult:Landroid/widget/TextView;

    .line 3338
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent:Landroid/os/Bundle;

    const-string v2, "allow_device_credential"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    sget v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->confirm_device_credential_password:I

    .line 217
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent:Landroid/os/Bundle;

    const-string v2, "negative_text"

    .line 218
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 219
    :goto_2
    new-instance v2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$4;

    invoke-direct {v2, p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$4;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)V

    .line 3522
    iget-object v3, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, v3, Lo/onRelationshipValidationResult$ICustomTabsCallback;->asBinder:Ljava/lang/CharSequence;

    .line 3523
    iget-object v1, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onRelationshipValidationResult:Landroid/content/DialogInterface$OnClickListener;

    .line 3902
    iget-object v1, p1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v0, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->extraCommand:Landroid/view/View;

    .line 233
    invoke-virtual {p1}, Lo/onTransact$onNavigationEvent;->onNavigationEvent()Lo/onTransact;

    move-result-object p1

    .line 234
    invoke-virtual {p1, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 273
    invoke-super {p0, p1}, Lo/onAudioInfoChanged;->onCancel(Landroid/content/DialogInterface;)V

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const-string v0, "FingerprintHelperFragment"

    .line 276
    invoke-virtual {p1, v0}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 278
    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->extraCallback(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 246
    invoke-super {p0, p1}, Lo/onAudioInfoChanged;->onCreate(Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->asBinder:Landroid/content/Context;

    .line 249
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    const p1, 0x1010543

    .line 250
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onMessageChannelReady(I)I

    move-result p1

    iput p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onPostMessage:I

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->asBinder:Landroid/content/Context;

    sget v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->biometric_error_color:I

    invoke-static {p1, v0}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onPostMessage:I

    :goto_0
    const p1, 0x1010038

    .line 254
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onMessageChannelReady(I)I

    move-result p1

    iput p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->ICustomTabsCallback:I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 266
    invoke-super {p0}, Lo/onAudioInfoChanged;->onPause()V

    .line 268
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 259
    invoke-super {p0}, Lo/onAudioInfoChanged;->onResume()V

    const/4 v0, 0x0

    .line 260
    iput v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onTransact:I

    const/4 v0, 0x1

    .line 261
    invoke-direct {p0, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->ICustomTabsCallback(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 240
    invoke-super {p0, p1}, Lo/onAudioInfoChanged;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 241
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent:Landroid/os/Bundle;

    const-string v1, "SavedBundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
