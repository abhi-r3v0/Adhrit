.class public final Lo/restoreHierarchyState$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCustomView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/restoreHierarchyState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getCustomView<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lo/restoreHierarchyState$onNavigationEvent;->ICustomTabsCallback:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/getVisibility;)Lo/setNavigationContentDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getVisibility;",
            ")",
            "Lo/setNavigationContentDescription<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance p1, Lo/restoreHierarchyState;

    iget-object v0, p0, Lo/restoreHierarchyState$onNavigationEvent;->ICustomTabsCallback:Landroid/content/res/Resources;

    invoke-static {}, Lo/DialogTitle;->onMessageChannelReady()Lo/DialogTitle;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lo/restoreHierarchyState;-><init>(Landroid/content/res/Resources;Lo/setNavigationContentDescription;)V

    return-object p1
.end method
