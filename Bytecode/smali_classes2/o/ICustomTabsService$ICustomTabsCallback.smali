.class Lo/ICustomTabsService$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ICustomTabsCallback$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/ICustomTabsService;


# direct methods
.method constructor <init>(Lo/ICustomTabsService;)V
    .locals 0

    .line 3306
    iput-object p1, p0, Lo/ICustomTabsService$ICustomTabsCallback;->ICustomTabsCallback:Lo/ICustomTabsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
