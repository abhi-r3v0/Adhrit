.class public abstract Lo/resolveType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/resolveType$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/resolveType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lo/resolveType$5;

    invoke-direct {v0}, Lo/resolveType$5;-><init>()V

    sput-object v0, Lo/resolveType;->onMessageChannelReady:Lo/resolveType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static extraCallback(Lo/resolveType;)Lo/resolveType$ICustomTabsCallback;
    .locals 1

    .line 57
    new-instance v0, Lo/resolveType$2;

    invoke-direct {v0, p0}, Lo/resolveType$2;-><init>(Lo/resolveType;)V

    return-object v0
.end method
