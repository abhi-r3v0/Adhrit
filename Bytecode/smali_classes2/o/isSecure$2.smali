.class final Lo/isSecure$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isSecure;->extraCallback(Lo/moveRedRight$onPostMessage;Ljava/lang/Throwable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/moveRedRight$onPostMessage;


# direct methods
.method constructor <init>(Lo/moveRedRight$onPostMessage;Ljava/lang/Throwable;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lo/isSecure$2;->onNavigationEvent:Lo/moveRedRight$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 210
    iget-object v0, p0, Lo/isSecure$2;->onNavigationEvent:Lo/moveRedRight$onPostMessage;

    invoke-interface {v0}, Lo/moveRedRight$onPostMessage;->extraCallback()V

    return-void
.end method
