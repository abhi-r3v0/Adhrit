.class final Lo/createCheckedTextView$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCheckedTextView$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createCheckedTextView;->extraCallback(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/createCheckedTextView;

.field private synthetic extraCallback:F


# direct methods
.method constructor <init>(Lo/createCheckedTextView;F)V
    .locals 0

    .line 530
    iput-object p1, p0, Lo/createCheckedTextView$12;->ICustomTabsCallback:Lo/createCheckedTextView;

    iput p2, p0, Lo/createCheckedTextView$12;->extraCallback:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 533
    iget-object v0, p0, Lo/createCheckedTextView$12;->ICustomTabsCallback:Lo/createCheckedTextView;

    iget v1, p0, Lo/createCheckedTextView$12;->extraCallback:F

    invoke-virtual {v0, v1}, Lo/createCheckedTextView;->extraCallback(F)V

    return-void
.end method
