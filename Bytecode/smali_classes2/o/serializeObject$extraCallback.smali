.class public final Lo/serializeObject$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPersistenceKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/serializeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field private final arg$1:Lo/toByteArray$ICustomTabsCallback;


# direct methods
.method private constructor <init>(Lo/toByteArray$ICustomTabsCallback;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/serializeObject$extraCallback;->arg$1:Lo/toByteArray$ICustomTabsCallback;

    return-void
.end method

.method public static lambdaFactory$(Lo/toByteArray$ICustomTabsCallback;)Lo/getPersistenceKey;
    .locals 1

    .line 3000
    new-instance v0, Lo/serializeObject$extraCallback;

    invoke-direct {v0, p0}, Lo/serializeObject$extraCallback;-><init>(Lo/toByteArray$ICustomTabsCallback;)V

    return-object v0
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/serializeObject$extraCallback;->arg$1:Lo/toByteArray$ICustomTabsCallback;

    check-cast p1, Lo/ByteString;

    invoke-static {v0, p1}, Lo/toByteArray;->lambda$fetchFromBackendAndCacheResponse$3(Lo/toByteArray$ICustomTabsCallback;Lo/ByteString;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
