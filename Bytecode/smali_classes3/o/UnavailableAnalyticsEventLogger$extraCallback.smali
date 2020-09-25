.class final Lo/UnavailableAnalyticsEventLogger$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UnavailableAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private onPostMessage:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Lo/UnavailableAnalyticsEventLogger$extraCallback;->onPostMessage:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final readResolve()Ljava/lang/Object;
    .locals 1

    .line 367
    iget-object v0, p0, Lo/UnavailableAnalyticsEventLogger$extraCallback;->onPostMessage:[Ljava/lang/Object;

    invoke-static {v0}, Lo/UnavailableAnalyticsEventLogger;->extraCallback([Ljava/lang/Object;)Lo/UnavailableAnalyticsEventLogger;

    move-result-object v0

    return-object v0
.end method
