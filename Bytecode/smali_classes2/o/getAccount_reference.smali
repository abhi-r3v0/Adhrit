.class final Lo/getAccount_reference;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getInterest_rate;


# instance fields
.field private final synthetic onNavigationEvent:Lo/getNext_screen;


# direct methods
.method constructor <init>(Lo/getNext_screen;)V
    .locals 0

    iput-object p1, p0, Lo/getAccount_reference;->onNavigationEvent:Lo/getNext_screen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [[B

    iget-object v1, p0, Lo/getAccount_reference;->onNavigationEvent:Lo/getNext_screen;

    invoke-virtual {v1}, Lo/getNext_screen;->onNavigationEvent()Lo/getDefault_value;

    move-result-object v1

    invoke-virtual {v1}, Lo/getDefault_value;->ICustomTabsCallback()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/getAccount_reference;->onNavigationEvent:Lo/getNext_screen;

    invoke-virtual {v1}, Lo/getNext_screen;->onNavigationEvent()Lo/getDefault_value;

    move-result-object v1

    invoke-virtual {v1}, Lo/getDefault_value;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getInterest_rate;

    invoke-interface {v1, p1, p2}, Lo/getInterest_rate;->extraCallback([B[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v0}, Lo/ExtraDetails$ExtraCta;->onNavigationEvent([[B)[B

    move-result-object p1

    return-object p1
.end method
