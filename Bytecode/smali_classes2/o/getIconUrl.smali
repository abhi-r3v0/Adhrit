.class final Lo/getIconUrl;
.super Lo/ParentEntityJsonAdapter;


# instance fields
.field private final synthetic onNavigationEvent:Lo/setBackgroundImage;


# direct methods
.method constructor <init>(Lo/setBackgroundImage;)V
    .locals 0

    iput-object p1, p0, Lo/getIconUrl;->onNavigationEvent:Lo/setBackgroundImage;

    invoke-direct {p0}, Lo/ParentEntityJsonAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/getIconUrl;->onNavigationEvent:Lo/setBackgroundImage;

    invoke-static {v0}, Lo/setBackgroundImage;->extraCallback(Lo/setBackgroundImage;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lo/getImage;

    invoke-direct {v1, p0}, Lo/getImage;-><init>(Lo/getIconUrl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
