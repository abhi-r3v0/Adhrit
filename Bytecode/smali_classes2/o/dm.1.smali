.class final synthetic Lo/dm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# static fields
.field static final onMessageChannelReady:Lo/onPostExecute;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/dm;

    invoke-direct {v0}, Lo/dm;-><init>()V

    sput-object v0, Lo/dm;->onMessageChannelReady:Lo/onPostExecute;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lo/setTimestamp;->extraCallback()Lo/delete;

    move-result-object v0

    return-object v0
.end method
