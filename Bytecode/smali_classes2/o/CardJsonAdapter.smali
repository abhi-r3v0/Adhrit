.class final Lo/CardJsonAdapter;
.super Lo/setNumberOfPie;


# instance fields
.field private final synthetic extraCallback:Lo/setBackgroundImage;


# direct methods
.method constructor <init>(Lo/setBackgroundImage;)V
    .locals 0

    iput-object p1, p0, Lo/CardJsonAdapter;->extraCallback:Lo/setBackgroundImage;

    invoke-direct {p0}, Lo/setNumberOfPie;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/setPieAngle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/CardJsonAdapter;->extraCallback:Lo/setBackgroundImage;

    invoke-static {v0}, Lo/setBackgroundImage;->extraCallback(Lo/setBackgroundImage;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lo/BottomJsonAdapter;

    invoke-direct {v1, p0, p1}, Lo/BottomJsonAdapter;-><init>(Lo/CardJsonAdapter;Lo/setPieAngle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
