.class public Lo/FirebaseAuthWebException$onMessageChannelReady;
.super Lo/onSessionDestroyed;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseAuthWebException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final extraCallback:Lo/FirebaseAuthWebException;


# direct methods
.method public constructor <init>(Lo/FirebaseAuthWebException;)V
    .locals 0

    .line 3296
    invoke-direct {p0}, Lo/onSessionDestroyed;-><init>()V

    .line 3297
    iput-object p1, p0, Lo/FirebaseAuthWebException$onMessageChannelReady;->extraCallback:Lo/FirebaseAuthWebException;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V
    .locals 9

    .line 3303
    invoke-super {p0, p1, p2}, Lo/onSessionDestroyed;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V

    .line 3304
    iget-object p1, p0, Lo/FirebaseAuthWebException$onMessageChannelReady;->extraCallback:Lo/FirebaseAuthWebException;

    .line 4186
    iget-object p1, p1, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3305
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 3306
    :goto_0
    iget-object v1, p0, Lo/FirebaseAuthWebException$onMessageChannelReady;->extraCallback:Lo/FirebaseAuthWebException;

    .line 4221
    iget-boolean v2, v1, Lo/FirebaseAuthWebException;->asInterface:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 3307
    :goto_1
    iget-object v2, p0, Lo/FirebaseAuthWebException$onMessageChannelReady;->extraCallback:Lo/FirebaseAuthWebException;

    .line 5104
    iget-object v3, v2, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 5447
    iget-boolean v3, v3, Lo/getReason;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_2

    .line 5104
    iget-object v2, v2, Lo/FirebaseAuthWebException;->onNavigationEvent:Lo/getReason;

    .line 5515
    iget-object v2, v2, Lo/getReason;->onTransact:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object v2, v0

    .line 3308
    :goto_2
    iget-object v3, p0, Lo/FirebaseAuthWebException$onMessageChannelReady;->extraCallback:Lo/FirebaseAuthWebException;

    .line 5783
    iget-boolean v4, v3, Lo/FirebaseAuthWebException;->ICustomTabsCallback:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v3, Lo/FirebaseAuthWebException;->onPostMessage:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 5784
    iget-object v0, v3, Lo/FirebaseAuthWebException;->onTransact:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3309
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 3310
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 3311
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v4

    const/4 v7, 0x0

    if-nez v6, :cond_5

    .line 3312
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v8, 0x1

    :goto_4
    if-eqz v3, :cond_6

    .line 3315
    invoke-virtual {p2, p1}, Lo/getPlaybackState;->extraCallback(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_7

    .line 3317
    invoke-virtual {p2, v1}, Lo/getPlaybackState;->extraCallback(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    .line 3321
    invoke-virtual {p2, v1}, Lo/getPlaybackState;->onRelationshipValidationResult(Ljava/lang/CharSequence;)V

    if-nez v3, :cond_8

    if-eqz v5, :cond_8

    const/4 v7, 0x1

    .line 3322
    :cond_8
    invoke-virtual {p2, v7}, Lo/getPlaybackState;->requestPostMessageChannel(Z)V

    :cond_9
    if-eqz v8, :cond_b

    if-eqz v6, :cond_a

    goto :goto_6

    :cond_a
    move-object v2, v0

    .line 3326
    :goto_6
    invoke-virtual {p2, v2}, Lo/getPlaybackState;->asInterface(Ljava/lang/CharSequence;)V

    .line 3327
    invoke-virtual {p2, v4}, Lo/getPlaybackState;->newSession(Z)V

    :cond_b
    return-void
.end method
