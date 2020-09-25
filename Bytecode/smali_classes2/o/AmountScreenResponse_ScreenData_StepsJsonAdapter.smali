.class public final Lo/AmountScreenResponse_ScreenData_StepsJsonAdapter;
.super Ljava/lang/Object;


# static fields
.field private static final extraCallback:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lo/AmountScreenResponse_ScreenData_StepsJsonAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/AmountScreenResponse_ScreenData_StepsJsonAdapter;->extraCallback:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent(Lo/getShowKyc;)Lo/getInterest_rate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lo/getMax_limit;->extraCallback(Lo/getShowKyc;Lo/getExitIntent;)Lo/getNext_screen;

    move-result-object p0

    new-instance v0, Lo/getAccount_reference;

    invoke-direct {v0, p0}, Lo/getAccount_reference;-><init>(Lo/getNext_screen;)V

    return-object v0
.end method
