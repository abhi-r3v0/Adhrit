.class final Lo/requiresGooglePlayServices;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lo/onUserSignOut;

    invoke-direct {v0}, Lo/onUserSignOut;-><init>()V

    sput-object v0, Lo/requiresGooglePlayServices;->extraCallback:Ljava/util/Iterator;

    .line 4
    new-instance v0, Lo/enableLocalFallback;

    invoke-direct {v0}, Lo/enableLocalFallback;-><init>()V

    sput-object v0, Lo/requiresGooglePlayServices;->onPostMessage:Ljava/lang/Iterable;

    return-void
.end method

.method static extraCallback()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lo/requiresGooglePlayServices;->onPostMessage:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic onNavigationEvent()Ljava/util/Iterator;
    .locals 1

    .line 2
    sget-object v0, Lo/requiresGooglePlayServices;->extraCallback:Ljava/util/Iterator;

    return-object v0
.end method
