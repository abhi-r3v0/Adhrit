.class public final Lo/copyMarginsFromCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/helpers/BiometricHelper;",
        "",
        "()V",
        "authenticate",
        "",
        "activity",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "onSuccess",
        "Lkotlin/Function0;",
        "onFailure",
        "onUserCancelled",
        "isBiometricEnabledOnDevice",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/copyMarginsFromCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/copyMarginsFromCompat;

    invoke-direct {v0}, Lo/copyMarginsFromCompat;-><init>()V

    sput-object v0, Lo/copyMarginsFromCompat;->onMessageChannelReady:Lo/copyMarginsFromCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Lo/asBinder;Lo/getServerTime;Lo/getServerTime;Lo/getServerTime;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/asBinder;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailure"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUserCancelled"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 20
    new-instance v1, Lo/run;

    check-cast p0, Lo/onSessionEvent;

    .line 21
    new-instance v2, Lo/copyMarginsFromCompat$onPostMessage;

    invoke-direct {v2, p3, p2, p1}, Lo/copyMarginsFromCompat$onPostMessage;-><init>(Lo/getServerTime;Lo/getServerTime;Lo/getServerTime;)V

    check-cast v2, Lo/run$onNavigationEvent;

    .line 20
    invoke-direct {v1, p0, v0, v2}, Lo/run;-><init>(Lo/onSessionEvent;Ljava/util/concurrent/Executor;Lo/run$onNavigationEvent;)V

    .line 49
    new-instance p0, Lo/run$ICustomTabsCallback$onNavigationEvent;

    invoke-direct {p0}, Lo/run$ICustomTabsCallback$onNavigationEvent;-><init>()V

    .line 50
    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p1, 0x7f13009f

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 1239
    iget-object p2, p0, Lo/run$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback:Landroid/os/Bundle;

    const-string/jumbo p3, "title"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 51
    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p1, 0x7f130142

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 1248
    iget-object p2, p0, Lo/run$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback:Landroid/os/Bundle;

    const-string/jumbo v0, "subtitle"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 52
    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p1, 0x7f1300a8

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 1268
    iget-object p2, p0, Lo/run$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback:Landroid/os/Bundle;

    const-string v0, "negative_text"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1344
    iget-object p1, p0, Lo/run$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback:Landroid/os/Bundle;

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1345
    iget-object p2, p0, Lo/run$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 1346
    iget-object p3, p0, Lo/run$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback:Landroid/os/Bundle;

    const-string v0, "allow_device_credential"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 1347
    iget-object v0, p0, Lo/run$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback:Landroid/os/Bundle;

    const-string v2, "handling_device_credential_result"

    .line 1348
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1353
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1354
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative text must be set and non-empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1356
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    .line 1357
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have both negative button behavior and device credential enabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    .line 1361
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t be handling device credential result without device credential enabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1364
    :cond_5
    :goto_2
    new-instance p1, Lo/run$ICustomTabsCallback;

    iget-object p0, p0, Lo/run$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback:Landroid/os/Bundle;

    invoke-direct {p1, p0}, Lo/run$ICustomTabsCallback;-><init>(Landroid/os/Bundle;)V

    const-string p0, "BiometricPrompt.PromptIn\u2026\n                .build()"

    .line 53
    invoke-static {p1, p0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, p1}, Lo/run;->extraCallback(Lo/run$ICustomTabsCallback;)V

    return-void

    .line 1351
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Title must be set and non-empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onNavigationEvent(Lo/asBinder;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    check-cast p0, Landroid/content/Context;

    .line 1091
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1;->onNavigationEvent()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
