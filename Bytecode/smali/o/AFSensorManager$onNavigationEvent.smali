.class final Lo/AFSensorManager$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AFSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field extraCallback:Lo/AFSensorManager$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AFSensorManager$onNavigationEvent<",
            "TI;>;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Lo/AFSensorManager$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AFSensorManager$onNavigationEvent<",
            "TI;>;"
        }
    .end annotation
.end field

.field onNavigationEvent:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TI;>;"
        }
    .end annotation
.end field

.field onPostMessage:I


# direct methods
.method synthetic constructor <init>(ILjava/util/LinkedList;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0, p1, p2, v0}, Lo/AFSensorManager$onNavigationEvent;-><init>(Lo/AFSensorManager$onNavigationEvent;ILjava/util/LinkedList;Lo/AFSensorManager$onNavigationEvent;)V

    return-void
.end method

.method private constructor <init>(Lo/AFSensorManager$onNavigationEvent;ILjava/util/LinkedList;Lo/AFSensorManager$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AFSensorManager$onNavigationEvent<",
            "TI;>;I",
            "Ljava/util/LinkedList<",
            "TI;>;",
            "Lo/AFSensorManager$onNavigationEvent<",
            "TI;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lo/AFSensorManager$onNavigationEvent;->onMessageChannelReady:Lo/AFSensorManager$onNavigationEvent;

    .line 39
    iput p2, p0, Lo/AFSensorManager$onNavigationEvent;->onPostMessage:I

    .line 40
    iput-object p3, p0, Lo/AFSensorManager$onNavigationEvent;->onNavigationEvent:Ljava/util/LinkedList;

    .line 41
    iput-object p1, p0, Lo/AFSensorManager$onNavigationEvent;->extraCallback:Lo/AFSensorManager$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LinkedEntry(key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/AFSensorManager$onNavigationEvent;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
