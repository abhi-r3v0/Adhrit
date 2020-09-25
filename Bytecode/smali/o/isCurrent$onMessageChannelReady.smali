.class public final Lo/isCurrent$onMessageChannelReady;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isCurrent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

.field public static final cardview_compat_inset_shadow:I = 0x7f070058

.field public static final cardview_default_elevation:I = 0x7f070059

.field public static final cardview_default_radius:I = 0x7f07005a


# instance fields
.field public final ICustomTabsCallback:Lo/verifyDrawable;

.field public final extraCallback:Lo/setTransitioning;

.field public final onMessageChannelReady:Lo/setTransitioning;

.field public final onPostMessage:Lo/verifyDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2192
    invoke-static {}, Lo/setContents$onPostMessage;->values()[Lo/setContents$onPostMessage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/isCurrent$onMessageChannelReady;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    :try_start_0
    sget-object v1, Lo/setContents$onPostMessage;->ADDED:Lo/setContents$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/isCurrent$onMessageChannelReady;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    sget-object v1, Lo/setContents$onPostMessage;->METADATA:Lo/setContents$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lo/isCurrent$onMessageChannelReady;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    sget-object v1, Lo/setContents$onPostMessage;->MODIFIED:Lo/setContents$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lo/isCurrent$onMessageChannelReady;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    sget-object v1, Lo/setContents$onPostMessage;->REMOVED:Lo/setContents$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/verifyDrawable;Lo/verifyDrawable;Lo/setTransitioning;Lo/setTransitioning;)V
    .locals 0

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    iput-object p1, p0, Lo/isCurrent$onMessageChannelReady;->onPostMessage:Lo/verifyDrawable;

    .line 1016
    iput-object p2, p0, Lo/isCurrent$onMessageChannelReady;->ICustomTabsCallback:Lo/verifyDrawable;

    .line 1017
    iput-object p3, p0, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady:Lo/setTransitioning;

    .line 1018
    iput-object p4, p0, Lo/isCurrent$onMessageChannelReady;->extraCallback:Lo/setTransitioning;

    return-void
.end method

.method public static extraCallback(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 2027
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2029
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    const-string v1, "input_method"

    .line 2031
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_1

    .line 2033
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 2040
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2042
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 2044
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static onPostMessage(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 2052
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2053
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2054
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2056
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
