.class public final Lo/setDesignInformation;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:[B

.field private final extraCallback:I


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lo/setDesignInformation;->ICustomTabsCallback:[B

    .line 12
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    iput p1, p0, Lo/setDesignInformation;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 24
    instance-of v0, p1, Lo/setDesignInformation;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 27
    :cond_0
    iget-object v0, p0, Lo/setDesignInformation;->ICustomTabsCallback:[B

    check-cast p1, Lo/setDesignInformation;

    iget-object p1, p1, Lo/setDesignInformation;->ICustomTabsCallback:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 32
    iget v0, p0, Lo/setDesignInformation;->extraCallback:I

    return v0
.end method
