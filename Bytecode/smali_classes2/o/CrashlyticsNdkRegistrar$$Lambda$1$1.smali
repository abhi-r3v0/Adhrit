.class final Lo/CrashlyticsNdkRegistrar$$Lambda$1$1;
.super Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsNdkRegistrar$$Lambda$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;I)V
    .locals 8

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 161
    invoke-direct/range {v0 .. v7}, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0, p1, p2}, Lo/CrashlyticsNdkRegistrar$$Lambda$1$1;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
