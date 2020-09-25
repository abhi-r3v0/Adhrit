.class final Lo/createCheckedTextView$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCheckedTextView$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createCheckedTextView;->onMessageChannelReady(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onPostMessage:Lo/createCheckedTextView;


# direct methods
.method constructor <init>(Lo/createCheckedTextView;Ljava/lang/String;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lo/createCheckedTextView$16;->onPostMessage:Lo/createCheckedTextView;

    iput-object p2, p0, Lo/createCheckedTextView$16;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 571
    iget-object v0, p0, Lo/createCheckedTextView$16;->onPostMessage:Lo/createCheckedTextView;

    iget-object v1, p0, Lo/createCheckedTextView$16;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/createCheckedTextView;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method
