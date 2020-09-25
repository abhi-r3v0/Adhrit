.class public final Lo/getDropDownHorizontalOffset;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPopupBackgroundDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDropDownHorizontalOffset$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPopupBackgroundDrawable<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final onPostMessage:Lo/FitWindowsViewGroup;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lo/ButtonBarLayout;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lo/FitWindowsViewGroup;

    invoke-direct {v0, p1, p2}, Lo/FitWindowsViewGroup;-><init>(Ljava/io/InputStream;Lo/ButtonBarLayout;)V

    iput-object v0, p0, Lo/getDropDownHorizontalOffset;->onPostMessage:Lo/FitWindowsViewGroup;

    const/high16 p1, 0x500000

    .line 25
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1031
    iget-object v0, p0, Lo/getDropDownHorizontalOffset;->onPostMessage:Lo/FitWindowsViewGroup;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 1032
    iget-object v0, p0, Lo/getDropDownHorizontalOffset;->onPostMessage:Lo/FitWindowsViewGroup;

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 1

    .line 37
    iget-object v0, p0, Lo/getDropDownHorizontalOffset;->onPostMessage:Lo/FitWindowsViewGroup;

    invoke-virtual {v0}, Lo/FitWindowsViewGroup;->extraCallback()V

    return-void
.end method
