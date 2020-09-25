.class final Lo/setPreserveFocusAfterLayout$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setPreserveFocusAfterLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u000e"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "top",
        "<anonymous parameter 3>",
        "<anonymous parameter 4>",
        "<anonymous parameter 5>",
        "<anonymous parameter 6>",
        "<anonymous parameter 7>",
        "<anonymous parameter 8>",
        "onLayoutChange"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setPreserveFocusAfterLayout;


# direct methods
.method constructor <init>(Lo/setPreserveFocusAfterLayout;)V
    .locals 0

    iput-object p1, p0, Lo/setPreserveFocusAfterLayout$onNavigationEvent;->ICustomTabsCallback:Lo/setPreserveFocusAfterLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 117
    iget-object p1, p0, Lo/setPreserveFocusAfterLayout$onNavigationEvent;->ICustomTabsCallback:Lo/setPreserveFocusAfterLayout;

    invoke-static {p1, p3}, Lo/setPreserveFocusAfterLayout;->extraCallback(Lo/setPreserveFocusAfterLayout;I)V

    .line 118
    iget-object p1, p0, Lo/setPreserveFocusAfterLayout$onNavigationEvent;->ICustomTabsCallback:Lo/setPreserveFocusAfterLayout;

    invoke-static {p1}, Lo/setPreserveFocusAfterLayout;->onMessageChannelReady(Lo/setPreserveFocusAfterLayout;)V

    return-void
.end method
