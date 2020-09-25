.class final Lo/onDataMessage$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataMessage;->extraCallback(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Ljava/io/InputStream;

.field private synthetic onPostMessage:Lo/onDataMessage;


# direct methods
.method constructor <init>(Lo/onDataMessage;Ljava/io/InputStream;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lo/onDataMessage$14;->onPostMessage:Lo/onDataMessage;

    iput-object p2, p0, Lo/onDataMessage$14;->onNavigationEvent:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 257
    iget-object v0, p0, Lo/onDataMessage$14;->onPostMessage:Lo/onDataMessage;

    invoke-static {v0}, Lo/onDataMessage;->onPostMessage(Lo/onDataMessage;)Lo/colorFlip;

    move-result-object v0

    iget-object v1, p0, Lo/onDataMessage$14;->onNavigationEvent:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lo/colorFlip;->extraCallback(Ljava/io/InputStream;)V

    return-void
.end method
