.class final Lo/Foreground$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ServerConfigHandler$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Foreground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private onNavigationEvent:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lo/Foreground$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Landroid/content/Context;)Lo/ServerConfigHandler$extraCallback;
    .locals 0

    if-eqz p1, :cond_0

    .line 1102
    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lo/Foreground$ICustomTabsCallback;->onNavigationEvent:Landroid/content/Context;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2033
    throw p1
.end method

.method public final onPostMessage()Lo/ServerConfigHandler;
    .locals 3

    .line 108
    iget-object v0, p0, Lo/Foreground$ICustomTabsCallback;->onNavigationEvent:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Lo/Foreground;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/Foreground;-><init>(Landroid/content/Context;B)V

    return-object v1

    .line 1095
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must be set"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
