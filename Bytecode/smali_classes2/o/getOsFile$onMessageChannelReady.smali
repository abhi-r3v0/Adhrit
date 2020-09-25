.class abstract Lo/getOsFile$onMessageChannelReady;
.super Lo/getOsFile$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getOsFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 956
    invoke-direct {p0}, Lo/getOsFile$extraCallback;-><init>()V

    .line 957
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/getOsFile$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 962
    iget-object v0, p0, Lo/getOsFile$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method
