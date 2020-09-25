.class final Lo/createCheckedTextView$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCheckedTextView$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createCheckedTextView;->onNavigationEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/createCheckedTextView;

.field private synthetic onNavigationEvent:I


# direct methods
.method constructor <init>(Lo/createCheckedTextView;I)V
    .locals 0

    .line 468
    iput-object p1, p0, Lo/createCheckedTextView$13;->extraCallback:Lo/createCheckedTextView;

    iput p2, p0, Lo/createCheckedTextView$13;->onNavigationEvent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 471
    iget-object v0, p0, Lo/createCheckedTextView$13;->extraCallback:Lo/createCheckedTextView;

    iget v1, p0, Lo/createCheckedTextView$13;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Lo/createCheckedTextView;->onNavigationEvent(I)V

    return-void
.end method
