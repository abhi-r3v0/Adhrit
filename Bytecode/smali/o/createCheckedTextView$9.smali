.class final Lo/createCheckedTextView$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCheckedTextView$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createCheckedTextView;->ICustomTabsCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/createCheckedTextView;

.field private synthetic extraCallback:I


# direct methods
.method constructor <init>(Lo/createCheckedTextView;I)V
    .locals 0

    .line 735
    iput-object p1, p0, Lo/createCheckedTextView$9;->ICustomTabsCallback:Lo/createCheckedTextView;

    iput p2, p0, Lo/createCheckedTextView$9;->extraCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 738
    iget-object v0, p0, Lo/createCheckedTextView$9;->ICustomTabsCallback:Lo/createCheckedTextView;

    iget v1, p0, Lo/createCheckedTextView$9;->extraCallback:I

    invoke-virtual {v0, v1}, Lo/createCheckedTextView;->ICustomTabsCallback(I)V

    return-void
.end method
