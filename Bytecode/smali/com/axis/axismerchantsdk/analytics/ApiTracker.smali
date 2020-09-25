.class public Lcom/axis/axismerchantsdk/analytics/ApiTracker;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static asInterface:I


# instance fields
.field public ICustomTabsCallback:Ljava/util/Date;

.field public extraCallback:Ljava/lang/String;

.field public onMessageChannelReady:I

.field public onNavigationEvent:J

.field public onPostMessage:Ljava/lang/String;

.field public onTransact:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->ICustomTabsCallback:Ljava/util/Date;

    return-void
.end method

.method public static extraCallback()I
    .locals 1

    .line 17
    sget v0, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->asInterface:I

    return v0
.end method

.method public static onMessageChannelReady()V
    .locals 1

    .line 29
    sget v0, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->asInterface:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->asInterface:I

    return-void
.end method

.method public static onPostMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    sput v0, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->asInterface:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApiTracker{at="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->ICustomTabsCallback:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", loadTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageLoadStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->onNavigationEvent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pageLoadEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->onTransact:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", apiId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->asInterface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
