.class final Lo/createCheckedTextView$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCheckedTextView$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createCheckedTextView;->ICustomTabsCallback(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/createCheckedTextView;

.field private synthetic onPostMessage:F


# direct methods
.method constructor <init>(Lo/createCheckedTextView;F)V
    .locals 0

    .line 491
    iput-object p1, p0, Lo/createCheckedTextView$15;->onNavigationEvent:Lo/createCheckedTextView;

    iput p2, p0, Lo/createCheckedTextView$15;->onPostMessage:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 494
    iget-object v0, p0, Lo/createCheckedTextView$15;->onNavigationEvent:Lo/createCheckedTextView;

    iget v1, p0, Lo/createCheckedTextView$15;->onPostMessage:F

    invoke-virtual {v0, v1}, Lo/createCheckedTextView;->ICustomTabsCallback(F)V

    return-void
.end method
