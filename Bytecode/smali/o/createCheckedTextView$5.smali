.class final Lo/createCheckedTextView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCheckedTextView$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createCheckedTextView;->onMessageChannelReady(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:I

.field private synthetic extraCallback:I

.field private synthetic onMessageChannelReady:Lo/createCheckedTextView;


# direct methods
.method constructor <init>(Lo/createCheckedTextView;II)V
    .locals 0

    .line 645
    iput-object p1, p0, Lo/createCheckedTextView$5;->onMessageChannelReady:Lo/createCheckedTextView;

    iput p2, p0, Lo/createCheckedTextView$5;->ICustomTabsCallback:I

    iput p3, p0, Lo/createCheckedTextView$5;->extraCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 3

    .line 648
    iget-object v0, p0, Lo/createCheckedTextView$5;->onMessageChannelReady:Lo/createCheckedTextView;

    iget v1, p0, Lo/createCheckedTextView$5;->ICustomTabsCallback:I

    iget v2, p0, Lo/createCheckedTextView$5;->extraCallback:I

    invoke-virtual {v0, v1, v2}, Lo/createCheckedTextView;->onMessageChannelReady(II)V

    return-void
.end method
