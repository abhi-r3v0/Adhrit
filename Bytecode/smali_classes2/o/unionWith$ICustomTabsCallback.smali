.class public final Lo/unionWith$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/unionWith;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public onMessageChannelReady:Z

.field public onNavigationEvent:Z

.field private onPostMessage:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 172
    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lo/unionWith$ICustomTabsCallback;->onPostMessage:Ljava/lang/Runnable;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "task"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 180
    iget-boolean v0, p0, Lo/unionWith$ICustomTabsCallback;->onNavigationEvent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lo/unionWith$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 182
    iget-object v0, p0, Lo/unionWith$ICustomTabsCallback;->onPostMessage:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
