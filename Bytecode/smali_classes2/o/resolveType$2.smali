.class final Lo/resolveType$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/resolveType$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/resolveType;->extraCallback(Lo/resolveType;)Lo/resolveType$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/resolveType;


# direct methods
.method constructor <init>(Lo/resolveType;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lo/resolveType$2;->onNavigationEvent:Lo/resolveType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/resolveType;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/resolveType$2;->onNavigationEvent:Lo/resolveType;

    return-object v0
.end method
