.class public final Lo/c$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/allow$onNavigationEvent;

.field private extraCallback:Z


# direct methods
.method public constructor <init>(Lo/allow$onNavigationEvent;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lo/c$ICustomTabsCallback;->ICustomTabsCallback:Lo/allow$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lo/c$ICustomTabsCallback;->ICustomTabsCallback:Lo/allow$onNavigationEvent;

    check-cast p1, Lo/c$ICustomTabsCallback;

    iget-object p1, p1, Lo/c$ICustomTabsCallback;->ICustomTabsCallback:Lo/allow$onNavigationEvent;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 189
    iget-object v0, p0, Lo/c$ICustomTabsCallback;->ICustomTabsCallback:Lo/allow$onNavigationEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onPostMessage()V
    .locals 1

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lo/c$ICustomTabsCallback;->extraCallback:Z

    return-void
.end method

.method public final onPostMessage(Lo/c$onPostMessage;)V
    .locals 1

    .line 171
    iget-boolean v0, p0, Lo/c$ICustomTabsCallback;->extraCallback:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lo/c$ICustomTabsCallback;->ICustomTabsCallback:Lo/allow$onNavigationEvent;

    invoke-interface {p1, v0}, Lo/c$onPostMessage;->ICustomTabsCallback(Lo/allow$onNavigationEvent;)V

    :cond_0
    return-void
.end method
