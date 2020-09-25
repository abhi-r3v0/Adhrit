.class final synthetic Lo/getFooterActions;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onNavigationEvent:Lo/getTemplateIdentifierName;


# direct methods
.method constructor <init>(Lo/getTemplateIdentifierName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getFooterActions;->onNavigationEvent:Lo/getTemplateIdentifierName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/getFooterActions;->onNavigationEvent:Lo/getTemplateIdentifierName;

    invoke-virtual {v0}, Lo/getTemplateIdentifierName;->onPostMessage()V

    return-void
.end method
