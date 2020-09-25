.class public final Lo/attach$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/attach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/whatsapp/SecondaryPhoneViewModel$Companion;",
        "",
        "()V",
        "COUNTRY_CODE",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final arg$1:Lo/setInstallationUuid;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/setInstallationUuid;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/attach$onMessageChannelReady;->arg$1:Lo/setInstallationUuid;

    return-void
.end method

.method public static lambdaFactory$(Lo/setInstallationUuid;)Lo/isDefaultApp;
    .locals 1

    .line 3000
    new-instance v0, Lo/attach$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/attach$onMessageChannelReady;-><init>(Lo/setInstallationUuid;)V

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/attach$onMessageChannelReady;->arg$1:Lo/setInstallationUuid;

    invoke-static {v0, p1}, Lo/setInstallationUuid;->lambda$get$0(Lo/setInstallationUuid;Lcom/google/android/gms/tasks/Task;)Lo/setSession;

    move-result-object p1

    return-object p1
.end method
