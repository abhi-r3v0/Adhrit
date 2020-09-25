.class public Lo/getTenantId;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(FFFLo/onIdTokenChanged;)V
    .locals 0

    const/4 p2, 0x0

    .line 64
    invoke-virtual {p4, p1, p2}, Lo/onIdTokenChanged;->extraCallback(FF)V

    return-void
.end method
