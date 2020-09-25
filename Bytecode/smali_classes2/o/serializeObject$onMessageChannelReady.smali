.class public final Lo/serializeObject$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/serializeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/serializeObject$onMessageChannelReady$onPostMessage;
    }
.end annotation


# instance fields
.field private final arg$1:Lo/toByteArray;

.field private final arg$2:Ljava/util/Date;


# direct methods
.method private constructor <init>(Lo/toByteArray;Ljava/util/Date;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/serializeObject$onMessageChannelReady;->arg$1:Lo/toByteArray;

    iput-object p2, p0, Lo/serializeObject$onMessageChannelReady;->arg$2:Ljava/util/Date;

    return-void
.end method

.method public static lambdaFactory$(Lo/toByteArray;Ljava/util/Date;)Lo/isDefaultApp;
    .locals 1

    .line 3000
    new-instance v0, Lo/serializeObject$onMessageChannelReady;

    invoke-direct {v0, p0, p1}, Lo/serializeObject$onMessageChannelReady;-><init>(Lo/toByteArray;Ljava/util/Date;)V

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/serializeObject$onMessageChannelReady;->arg$1:Lo/toByteArray;

    iget-object v1, p0, Lo/serializeObject$onMessageChannelReady;->arg$2:Ljava/util/Date;

    invoke-static {v0, v1, p1}, Lo/toByteArray;->lambda$fetchIfCacheExpiredAndNotThrottled$2(Lo/toByteArray;Ljava/util/Date;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
