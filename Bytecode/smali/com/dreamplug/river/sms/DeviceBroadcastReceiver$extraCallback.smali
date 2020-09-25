.class public final Lcom/dreamplug/river/sms/DeviceBroadcastReceiver$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/river/sms/DeviceBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/river/sms/DeviceBroadcastReceiver$Companion;",
        "",
        "()V",
        "LOGTAG",
        "",
        "kotlin.jvm.PlatformType",
        "SMS_RECEIVED_ACTION",
        "river_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final arg$1:Lo/setFiles;

.field private final arg$2:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/setFiles;I)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/river/sms/DeviceBroadcastReceiver$extraCallback;->arg$1:Lo/setFiles;

    iput p2, p0, Lcom/dreamplug/river/sms/DeviceBroadcastReceiver$extraCallback;->arg$2:I

    return-void
.end method

.method public static lambdaFactory$(Lo/setFiles;I)Lo/isDefaultApp;
    .locals 1

    .line 3000
    new-instance v0, Lcom/dreamplug/river/sms/DeviceBroadcastReceiver$extraCallback;

    invoke-direct {v0, p0, p1}, Lcom/dreamplug/river/sms/DeviceBroadcastReceiver$extraCallback;-><init>(Lo/setFiles;I)V

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    .line 2000
    iget-object v0, p0, Lcom/dreamplug/river/sms/DeviceBroadcastReceiver$extraCallback;->arg$1:Lo/setFiles;

    iget v1, p0, Lcom/dreamplug/river/sms/DeviceBroadcastReceiver$extraCallback;->arg$2:I

    invoke-static {v0, v1, p1}, Lo/setFiles;->lambda$getToken$1(Lo/setFiles;ILcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
