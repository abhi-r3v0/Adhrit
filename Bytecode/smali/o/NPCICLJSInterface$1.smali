.class public final Lo/NPCICLJSInterface$1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:J

.field public final ICustomTabsCallback$Stub:Lo/p$a;

.field public final asBinder:[J

.field public final asInterface:[J

.field public final extraCallback:I

.field private final getInterfaceDescriptor:[Lo/NPCICLJSInterface$3;

.field public final onMessageChannelReady:J

.field public final onNavigationEvent:J

.field public final onPostMessage:I

.field public final onRelationshipValidationResult:I

.field public final onTransact:I


# direct methods
.method public constructor <init>(IIJJJLo/p$a;I[Lo/NPCICLJSInterface$3;I[J[J)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Lo/NPCICLJSInterface$1;->onPostMessage:I

    .line 107
    iput p2, p0, Lo/NPCICLJSInterface$1;->extraCallback:I

    .line 108
    iput-wide p3, p0, Lo/NPCICLJSInterface$1;->ICustomTabsCallback:J

    .line 109
    iput-wide p5, p0, Lo/NPCICLJSInterface$1;->onMessageChannelReady:J

    .line 110
    iput-wide p7, p0, Lo/NPCICLJSInterface$1;->onNavigationEvent:J

    .line 111
    iput-object p9, p0, Lo/NPCICLJSInterface$1;->ICustomTabsCallback$Stub:Lo/p$a;

    .line 112
    iput p10, p0, Lo/NPCICLJSInterface$1;->onTransact:I

    .line 113
    iput-object p11, p0, Lo/NPCICLJSInterface$1;->getInterfaceDescriptor:[Lo/NPCICLJSInterface$3;

    .line 114
    iput p12, p0, Lo/NPCICLJSInterface$1;->onRelationshipValidationResult:I

    .line 115
    iput-object p13, p0, Lo/NPCICLJSInterface$1;->asInterface:[J

    .line 116
    iput-object p14, p0, Lo/NPCICLJSInterface$1;->asBinder:[J

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(I)Lo/NPCICLJSInterface$3;
    .locals 1

    .line 128
    iget-object v0, p0, Lo/NPCICLJSInterface$1;->getInterfaceDescriptor:[Lo/NPCICLJSInterface$3;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object p1, v0, p1

    return-object p1
.end method
