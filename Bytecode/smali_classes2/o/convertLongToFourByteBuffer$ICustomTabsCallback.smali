.class public Lo/convertLongToFourByteBuffer$ICustomTabsCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/convertLongToFourByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public active:Z

.field public creationTimestamp:J

.field public expiredEventName:Ljava/lang/String;

.field public expiredEventParams:Landroid/os/Bundle;

.field public name:Ljava/lang/String;

.field public origin:Ljava/lang/String;

.field public timeToLive:J

.field public timedOutEventName:Ljava/lang/String;

.field public timedOutEventParams:Landroid/os/Bundle;

.field public triggerEventName:Ljava/lang/String;

.field public triggerTimeout:J

.field public triggeredEventName:Ljava/lang/String;

.field public triggeredEventParams:Landroid/os/Bundle;

.field public triggeredTimestamp:J

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
