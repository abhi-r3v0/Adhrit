.class public interface abstract Lo/StaggeredGridLayoutManager$SavedState$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StaggeredGridLayoutManager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nH&J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0004\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/widget/navigation/CredNavigationView$Adapter;",
        "",
        "isTabAnimationEnabled",
        "",
        "()Z",
        "getFragment",
        "Landroidx/fragment/app/Fragment;",
        "tabItem",
        "Lcom/dreamplug/widget/navigation/TabItem;",
        "getList",
        "",
        "onItemSelected",
        "",
        "onTabClick",
        "source",
        "",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(Lo/isFullSpan;)V
.end method

.method public abstract ICustomTabsCallback(Lo/isFullSpan;Ljava/lang/String;)V
.end method

.method public abstract onMessageChannelReady(Lo/isFullSpan;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract onMessageChannelReady()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/isFullSpan;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onPostMessage()Z
.end method
