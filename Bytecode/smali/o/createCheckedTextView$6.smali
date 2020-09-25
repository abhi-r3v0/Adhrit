.class final Lo/createCheckedTextView$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCheckedTextView$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createCheckedTextView;->onNavigationEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/createCheckedTextView;


# direct methods
.method constructor <init>(Lo/createCheckedTextView;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lo/createCheckedTextView$6;->onPostMessage:Lo/createCheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 448
    iget-object v0, p0, Lo/createCheckedTextView$6;->onPostMessage:Lo/createCheckedTextView;

    invoke-virtual {v0}, Lo/createCheckedTextView;->onNavigationEvent()V

    return-void
.end method
