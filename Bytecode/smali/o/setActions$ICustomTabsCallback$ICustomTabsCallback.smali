.class public final Lo/setActions$ICustomTabsCallback$ICustomTabsCallback;
.super Lo/setActions$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setActions$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lo/setActions$ICustomTabsCallback;-><init>()V

    .line 131
    iput-object p1, p0, Lo/setActions$ICustomTabsCallback$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lo/setActions$ICustomTabsCallback$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "FAILURE (%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
