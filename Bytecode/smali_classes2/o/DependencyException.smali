.class public final Lo/DependencyException;
.super Lo/publish;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/publish;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void
.end method
