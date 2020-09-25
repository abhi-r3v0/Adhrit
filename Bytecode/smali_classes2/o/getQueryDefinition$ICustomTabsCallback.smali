.class public abstract Lo/getQueryDefinition$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getQueryDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onPostMessage(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/getQueryDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lo/NodeFromJSON;",
            ")",
            "Lo/getQueryDefinition<",
            "**>;"
        }
    .end annotation
.end method
