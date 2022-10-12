import * as React from 'react';
import Helmet from 'react-helmet';
import {
  Page,
  PageSection,
  Text,
  TextContent,
  Title,
} from '@patternfly/react-core';
import './example.css';

export default function ExamplePage() {
  return (
    <>
      <Helmet>
        <title>Hello!</title>
      </Helmet>
      <Page>
        <PageSection variant="light">
          <Title headingLevel="h1">Hello!</Title>
        </PageSection>
        <PageSection variant="light">
          <TextContent>
            <Text component="p">
              <span className="console-dynamic-plugin-template__nice">
                Nice!
              </span>{' '}
              The test plugin <code>console-dynamic-plugin-template</code> is working.
            </Text>
            <Text component="p">
              If you want to modify the test for this page, modify <code>src/components/ExamplePage.tsx</code> file.
            </Text>
          </TextContent>
        </PageSection>
      </Page>
    </>
  );
}
