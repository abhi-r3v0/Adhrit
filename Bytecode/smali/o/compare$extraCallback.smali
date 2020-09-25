.class public final Lo/compare$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/compare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ$\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefWrapper$Companion;",
        "",
        "()V",
        "getLegacyWrapper",
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefWrapper;",
        "context",
        "Landroid/app/Application;",
        "name",
        "",
        "mode",
        "",
        "getWrapper",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/compare$extraCallback;-><init>()V

    return-void
.end method

.method public static onNavigationEvent(Landroid/app/Application;Ljava/lang/String;I)Lo/compare;
    .locals 1

    const-string p2, "context"

    invoke-static {p0, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p2, Lo/compare;

    invoke-direct {p2}, Lo/compare;-><init>()V

    .line 21
    check-cast p0, Landroid/content/ContextWrapper;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/content/ContextWrapper;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "<set-?>"

    invoke-static {p0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1010
    iput-object p0, p2, Lo/compare;->onPostMessage:Landroid/content/SharedPreferences;

    return-object p2
.end method
