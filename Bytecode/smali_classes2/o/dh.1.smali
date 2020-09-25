.class final Lo/dh;
.super Lo/MethodNotAllowedException;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MethodNotAllowedException<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/fK;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lo/MethodNotAllowedException;-><init>(Lo/fK;Ljava/lang/String;Ljava/lang/Object;ZLo/de;)V

    return-void
.end method


# virtual methods
.method final synthetic ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
