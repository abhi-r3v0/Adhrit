.class abstract Lo/bH;
.super Lo/bF;
.source ""


# instance fields
.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/bF;-><init>()V

    .line 2
    invoke-static {p1}, Lo/gw;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/bH;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/bH;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method
