.class final Lo/createCheckedTextView$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCheckedTextView$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createCheckedTextView;->onMessageChannelReady(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/createCheckedTextView;

.field private synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/createCheckedTextView;I)V
    .locals 0

    .line 507
    iput-object p1, p0, Lo/createCheckedTextView$11;->extraCallback:Lo/createCheckedTextView;

    iput p2, p0, Lo/createCheckedTextView$11;->onPostMessage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 510
    iget-object v0, p0, Lo/createCheckedTextView$11;->extraCallback:Lo/createCheckedTextView;

    iget v1, p0, Lo/createCheckedTextView$11;->onPostMessage:I

    invoke-virtual {v0, v1}, Lo/createCheckedTextView;->onMessageChannelReady(I)V

    return-void
.end method
